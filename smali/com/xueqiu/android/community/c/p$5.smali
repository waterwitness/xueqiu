.class final Lcom/xueqiu/android/community/c/p$5;
.super Lcom/xueqiu/android/base/b/p;
.source "RewardListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/p;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/community/model/RewardCash;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/community/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/p;Z)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xueqiu/android/community/c/p$5;->b:Lcom/xueqiu/android/community/c/p;

    iput-boolean p2, p0, Lcom/xueqiu/android/community/c/p$5;->a:Z

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p$5;->b:Lcom/xueqiu/android/community/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/p;->c(Lcom/xueqiu/android/community/c/p;)V

    .line 136
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 132
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1140
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p$5;->b:Lcom/xueqiu/android/community/c/p;

    iget-boolean v1, p0, Lcom/xueqiu/android/community/c/p$5;->a:Z

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/community/c/p;->a(Lcom/xueqiu/android/community/c/p;ZLcom/xueqiu/android/common/model/PagedList;)V

    .line 132
    return-void
.end method
