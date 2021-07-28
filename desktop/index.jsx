import { React } from "uebersicht"
import { styled } from "uebersicht" // Emotion styles - https://emotion.sh/

const Background = styled("main")`
	position: absolute;
	top: 0;
	left: 0;
	width: 100vw;
	height: 100vh;
	opacity: 0.2;
	user-select: none;
	pointer-events: none;

	// Gradient / Scanline overlay
	&:before,
	&:after {
		position: absolute;
		content: "";
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
	}
	// &:before {
	// 	background-image: linear-gradient(180deg, #00F6F8 0%, #FD7CCD 100%);
	// }
	&:after {
		background-image: url('sk-background-shift/scanline.png');
		opacity: 0.3;
		z-index: 2;
	}
`

const Sidebar = styled("aside")`
	position: relative;
	top: 0;
	left: 0;
	width: 560px;
    height: 100vh;
	opacity: 1;
	background-color: rgba(0,0,0,.5);
`

export const render = () => (
	<>
		<Sidebar />
		<Background />
	</>
)
