.class public final Lcom/xueqiu/android/community/d/a$2;
.super Lcom/xueqiu/android/base/b/p;
.source "PaidMentionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/a;
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
.field final synthetic a:D

.field final synthetic b:Lcom/xueqiu/android/community/d/a;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/d/a;Lcom/xueqiu/android/base/b/q;D)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/community/d/a$2;->b:Lcom/xueqiu/android/community/d/a;

    iput-wide p3, p0, Lcom/xueqiu/android/community/d/a$2;->a:D

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 65
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1073
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/xueqiu/android/community/d/a$2;->b:Lcom/xueqiu/android/community/d/a;

    .line 2023
    iget-object v0, v0, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    .line 1074
    iget-wide v2, p0, Lcom/xueqiu/android/community/d/a$2;->a:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/xueqiu/android/community/b/c;->a(D)V

    .line 65
    :cond_0
    return-void
.end method
