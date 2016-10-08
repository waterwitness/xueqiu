.class final Lcom/xueqiu/android/trade/d/f$2;
.super Ljava/lang/Object;
.source "PAAccountVideoPresenter.java"

# interfaces
.implements Lcom/pingan/main/PAVideoManage$HandlerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/f;-><init>(Lcom/xueqiu/android/trade/b/i;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/h5/b;Landroid/view/ViewGroup;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/f;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/f$2;->a:Lcom/xueqiu/android/trade/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handlerState(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 115
    const-string v0, "HandlerState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "log in xueqiu: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 117
    iput p1, v0, Landroid/os/Message;->what:I

    .line 118
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/f$2;->a:Lcom/xueqiu/android/trade/d/f;

    .line 1025
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/f;->e:Landroid/os/Handler;

    .line 119
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void
.end method
