package crc641761f0fda1c31d4f;


public class FlexLayoutRenderer
	extends crc643f46942d9dd1fff9.VisualElementRenderer_1
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_dispatchTouchEvent:(Landroid/view/MotionEvent;)Z:GetDispatchTouchEvent_Landroid_view_MotionEvent_Handler\n" +
			"n_dispatchGenericMotionEvent:(Landroid/view/MotionEvent;)Z:GetDispatchGenericMotionEvent_Landroid_view_MotionEvent_Handler\n" +
			"";
		mono.android.Runtime.register ("MR.Gestures.Android.Renderers.FlexLayoutRenderer, MR.Gestures", FlexLayoutRenderer.class, __md_methods);
	}


	public FlexLayoutRenderer (android.content.Context p0)
	{
		super (p0);
		if (getClass () == FlexLayoutRenderer.class) {
			mono.android.TypeManager.Activate ("MR.Gestures.Android.Renderers.FlexLayoutRenderer, MR.Gestures", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public FlexLayoutRenderer (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == FlexLayoutRenderer.class) {
			mono.android.TypeManager.Activate ("MR.Gestures.Android.Renderers.FlexLayoutRenderer, MR.Gestures", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public FlexLayoutRenderer (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == FlexLayoutRenderer.class) {
			mono.android.TypeManager.Activate ("MR.Gestures.Android.Renderers.FlexLayoutRenderer, MR.Gestures", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, mscorlib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}


	public boolean dispatchTouchEvent (android.view.MotionEvent p0)
	{
		return n_dispatchTouchEvent (p0);
	}

	private native boolean n_dispatchTouchEvent (android.view.MotionEvent p0);


	public boolean dispatchGenericMotionEvent (android.view.MotionEvent p0)
	{
		return n_dispatchGenericMotionEvent (p0);
	}

	private native boolean n_dispatchGenericMotionEvent (android.view.MotionEvent p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
