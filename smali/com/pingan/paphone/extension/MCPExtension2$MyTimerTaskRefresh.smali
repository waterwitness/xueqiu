.class Lcom/pingan/paphone/extension/MCPExtension2$MyTimerTaskRefresh;
.super Ljava/util/TimerTask;
.source "MCPExtension2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 738
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->refreshByPost()V

    .line 739
    return-void
.end method
