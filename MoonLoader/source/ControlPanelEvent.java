/*
 * Decompiled with CFR 0_123.
 */
public class ControlPanelEvent {
    public static final int EVENT_TYPE_NOP = 0;
    public static final int EVENT_TYPE_LOAD = 1;
    public static final int EVENT_TYPE_SAVE = 2;
    public static final int EVENT_TYPE_EXECUTE = 3;
    private final int eventType;
    private final String param1;
    private final String param2;

    public ControlPanelEvent(int eventType) {
        this(eventType, null, null);
    }

    public ControlPanelEvent(int eventType, String param1) {
        this(eventType, param1, null);
    }

    public ControlPanelEvent(int eventType, String param1, String param2) {
        this.eventType = eventType;
        this.param1 = param1;
        this.param2 = param2;
    }

    public int getEventType() {
        return this.eventType;
    }

    public String getParam1() {
        return this.param1;
    }

    public String getParam2() {
        return this.param2;
    }
}

