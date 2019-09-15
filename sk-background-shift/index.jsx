import { React } from "uebersicht"
import { styled } from "uebersicht" // Emotion styles - https://emotion.sh/

const Background = styled("main")`
	position: relative;
	width: 100vw;
    height: 100vh;
	opacity: .6;
    color: white;
	font-family: 'Helvetica Neue';

	&:before,
	&:after {
		position: absolute;
		content: "";
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
	&:before {
		background-image: linear-gradient(180deg, #00F6F8 0%, #FD7CCD 100%);
	}
	&:after {
		background-image: url('sk-background-shift/scanline.png');
		background-repeat: repeat;
	}
`

export const render = () => (
	<>
		<Background />
	</>
)
