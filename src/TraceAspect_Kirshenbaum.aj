
public aspect TraceAspect_Kirshenbaum {

	pointcut myPointcut(): execution(String *.getName());
	
	before(): myPointcut() {
		System.out.print("[BGN] " + thisJoinPointStaticPart.getSignature() + ", ");
		System.out.println("Line Number: " + thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): myPointcut() {
		System.out.println("[END] " + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
	
}
