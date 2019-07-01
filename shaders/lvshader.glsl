#version 300 es
#undef lowp
#undef mediump
#undef highp

precision highp float;
precision highp int;

in vec3 aPos;
in vec2 aTexCoord;
out vec2 texCoord;
uniform mat4 transform;
void main()
{
    gl_Position = transform * vec4(aPos, 1.0);
    texCoord = aTexCoord;
}

