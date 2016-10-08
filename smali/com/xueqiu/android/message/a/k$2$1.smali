.class final Lcom/xueqiu/android/message/a/k$2$1;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/k$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/k$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/k$2;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xueqiu/android/message/a/k$2$1;->a:Lcom/xueqiu/android/message/a/k$2;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 97
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Boolean;

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1103
    iget-object v0, p0, Lcom/xueqiu/android/message/a/k$2$1;->a:Lcom/xueqiu/android/message/a/k$2;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/k$2;->b:Lcom/xueqiu/android/message/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Apply;

    .line 1104
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Apply;->getUserId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xueqiu/android/message/a/k$2$1;->a:Lcom/xueqiu/android/message/a/k$2;

    iget-object v4, v4, Lcom/xueqiu/android/message/a/k$2;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Apply;->getUserId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Apply;->getGroupId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xueqiu/android/message/a/k$2$1;->a:Lcom/xueqiu/android/message/a/k$2;

    iget-object v4, v4, Lcom/xueqiu/android/message/a/k$2;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-virtual {v4}, Lcom/xueqiu/android/message/model/Apply;->getGroupId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1105
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Apply;->setJoined(Z)V

    goto :goto_0

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/a/k$2$1;->a:Lcom/xueqiu/android/message/a/k$2;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/k$2;->b:Lcom/xueqiu/android/message/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/k;->notifyDataSetChanged()V

    :goto_1
    return-void

    .line 1111
    :cond_2
    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
