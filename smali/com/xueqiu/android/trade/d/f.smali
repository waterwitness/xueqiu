.class public final Lcom/xueqiu/android/trade/d/f;
.super Ljava/lang/Object;
.source "PAAccountVideoPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/b/h;


# instance fields
.field public a:Lcom/xueqiu/android/trade/b/i;

.field b:Lcom/xueqiu/android/base/h5/b;

.field c:I

.field d:I

.field e:Landroid/os/Handler;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/SurfaceView;

.field private h:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/b/i;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/h5/b;Landroid/view/ViewGroup;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/xueqiu/android/trade/d/f;->c:I

    .line 40
    iput v0, p0, Lcom/xueqiu/android/trade/d/f;->d:I

    .line 41
    new-instance v0, Lcom/xueqiu/android/trade/d/f$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/trade/d/f$1;-><init>(Lcom/xueqiu/android/trade/d/f;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/f;->e:Landroid/os/Handler;

    .line 104
    if-eqz p4, :cond_0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    .line 108
    iput-object p4, p0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    .line 109
    iput-object p5, p0, Lcom/xueqiu/android/trade/d/f;->f:Landroid/view/ViewGroup;

    .line 110
    iput-object p6, p0, Lcom/xueqiu/android/trade/d/f;->g:Landroid/view/SurfaceView;

    .line 111
    iput-object p7, p0, Lcom/xueqiu/android/trade/d/f;->h:Landroid/view/SurfaceView;

    .line 112
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 113
    new-instance v1, Lcom/xueqiu/android/trade/d/f$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/d/f$2;-><init>(Lcom/xueqiu/android/trade/d/f;)V

    .line 122
    const-string v0, "HandlerState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "log in xueqiu: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pingan/main/PAVideoManage;->getInstance(Landroid/content/Context;)Lcom/pingan/main/PAVideoManage;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/f;->f:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/f;->g:Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/xueqiu/android/trade/d/f;->h:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pingan/main/PAVideoManage;->onPACreate(Lcom/pingan/main/PAVideoManage$HandlerState;Landroid/view/ViewGroup;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    const-string v1, "\u6b63\u5728\u542f\u52a8\u89c6\u9891..."

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/i;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    const-string v0, "H5\u4f20\u9012\u53c2\u6570\u9519\u8bef"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1202
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1203
    const-string v2, "extra_event_result"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1204
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1205
    const-string v3, "result_code"

    invoke-virtual {v2, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v3, "error_code"

    invoke-virtual {v2, v3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v3, "msg"

    invoke-virtual {v2, v3, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v3, p0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2066
    iput-object v2, v3, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 1209
    const-string v2, "extra_event"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 25
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/f;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 25
    .line 2215
    iget v0, p0, Lcom/xueqiu/android/trade/d/f;->d:I

    if-eqz v0, :cond_0

    .line 2216
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/f;->a:Lcom/xueqiu/android/trade/b/i;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/trade/b/i;->a(Landroid/content/Intent;)V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public final c()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string v2, "extra_event_result"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v2, "extra_event"

    iget-object v3, p0, Lcom/xueqiu/android/trade/d/f;->b:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 197
    return-object v0
.end method
