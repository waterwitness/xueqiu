.class final Lcom/bairuitech/anychat/e$1;
.super Ljava/lang/Object;
.source "AnyChatCameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bairuitech/anychat/e;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bairuitech/anychat/e;


# direct methods
.method constructor <init>(Lcom/bairuitech/anychat/e;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/bairuitech/anychat/e$1;->a:Lcom/bairuitech/anychat/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .prologue
    .line 109
    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bairuitech/anychat/e$1;->a:Lcom/bairuitech/anychat/e;

    invoke-static {v0}, Lcom/bairuitech/anychat/e;->a(Lcom/bairuitech/anychat/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/bairuitech/anychat/AnyChatCoreSDK;->InputVideoData([BII)I

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/bairuitech/anychat/e$1;->a:Lcom/bairuitech/anychat/e;

    invoke-static {v0}, Lcom/bairuitech/anychat/e;->b(Lcom/bairuitech/anychat/e;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 113
    return-void
.end method
