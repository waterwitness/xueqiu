.class final Lcom/xueqiu/android/community/a/a$5$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/a$5;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/xueqiu/android/community/a/a$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/a$5;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/xueqiu/android/community/a/a$5$1;->a:Lcom/xueqiu/android/community/a/a$5;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 542
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 543
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 539
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1547
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    const v0, 0x7f070250

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 539
    :cond_0
    return-void
.end method
