.class final Lcom/xueqiu/android/message/TalkProfileActivity$9;
.super Lcom/xueqiu/android/base/b/p;
.source "TalkProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/TalkProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/message/model/BatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$9;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$9;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i()V

    .line 653
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 654
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 649
    check-cast p1, Lcom/xueqiu/android/message/model/BatchResult;

    .line 1658
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$9;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i()V

    .line 1659
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/BatchResult;->getSuccess()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/BatchResult;->getSuccess()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$9;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->finish()V

    .line 649
    :cond_0
    return-void
.end method
