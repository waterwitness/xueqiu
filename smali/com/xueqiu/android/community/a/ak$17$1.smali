.class final Lcom/xueqiu/android/community/a/ak$17$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak$17;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/ak$17;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak$17;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$17$1;->a:Lcom/xueqiu/android/community/a/ak$17;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1496
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 1497
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1493
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 2501
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "success"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17$1;->a:Lcom/xueqiu/android/community/a/ak$17;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/ak$17;->a:Lcom/xueqiu/android/community/model/Status;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/Status;->setMark(I)V

    .line 2503
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17$1;->a:Lcom/xueqiu/android/community/a/ak$17;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    .line 1493
    :cond_0
    return-void
.end method
