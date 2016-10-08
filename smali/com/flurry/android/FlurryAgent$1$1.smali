.class Lcom/flurry/android/FlurryAgent$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/android/FlurryAgent$1;->a(Lcom/flurry/sdk/lg;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lg;

.field final synthetic b:Lcom/flurry/android/FlurryAgent$1;


# direct methods
.method constructor <init>(Lcom/flurry/android/FlurryAgent$1;Lcom/flurry/sdk/lg;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/flurry/android/FlurryAgent$1$1;->b:Lcom/flurry/android/FlurryAgent$1;

    iput-object p2, p0, Lcom/flurry/android/FlurryAgent$1$1;->a:Lcom/flurry/sdk/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/flurry/android/FlurryAgent$2;->a:[I

    iget-object v1, p0, Lcom/flurry/android/FlurryAgent$1$1;->a:Lcom/flurry/sdk/lg;

    iget-object v1, v1, Lcom/flurry/sdk/lg;->c:Lcom/flurry/sdk/lg$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/lg$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->a()Lcom/flurry/android/FlurryAgentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->a()Lcom/flurry/android/FlurryAgentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/android/FlurryAgentListener;->onSessionStarted()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
