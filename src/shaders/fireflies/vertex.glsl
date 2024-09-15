uniform float uPixelRatio;
uniform float uSize;

attribute float aScale;

void main()
    {
        vec4 modelPosition = modelMatrix * vec4(position, 1.0);
        vec4 viewPosition = viewMatrix * modelPosition;
        vec4 projectionPosition = projectionMatrix * viewPosition;

        gl_Position = projectionPosition;
        gl_PointSize = uSize * aScale * uPixelRatio;
        gl_PointSize *= (1.0 / - viewPosition.z);
    }
