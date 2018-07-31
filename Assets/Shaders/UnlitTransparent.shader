Shader "VueCode/UnlitMod"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Color ("Main Color", Color) = (1,1,1,1)

		_Cutoff("Alpha cutoff", Range(0,1)) = 0.5

		_Stroke ("Stroke Alpha", Range(0,1)) = 0.1
		_StrokeColor ("Stroke Color", Color) = (1,1,1,1)

				_Stroke2 ("Stroke Alpha", Range(0,1)) = 0.1
		_StrokeColor2 ("Stroke Color", Color) = (1,1,1,1)
	}
	SubShader
	{
		Tags {"Queue"="AlphaTest" "IgnoreProjector"="True" "RenderType"="TransparentCutout" }
		LOD 100

		Lighting Off

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				half2 texcoord : TEXCOORD0;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			fixed _Cutoff;

			half4 _Color;

			fixed _Stroke;
			half4 _StrokeColor;

						fixed _Stroke2;
			half4 _StrokeColor2;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.texcoord);
				clip(col.a - _Cutoff);

				if(col.a < _Stroke) col = _StrokeColor;
				else col = _Color;
				return col;
			}
			ENDCG
		}
	}
}
