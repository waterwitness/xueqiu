.class final Lcom/xueqiu/android/message/TalkProfileActivity$8;
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
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/TalkProfileActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkProfileActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkProfileActivity$8;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$8;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i()V

    .line 636
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 637
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 632
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1641
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$8;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->i()V

    .line 1642
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkProfileActivity$8;->a:Lcom/xueqiu/android/message/TalkProfileActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/TalkProfileActivity;->finish()V

    .line 632
    :cond_0
    return-void
.end method
