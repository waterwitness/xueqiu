.class public final Lcom/xueqiu/android/community/d/d;
.super Ljava/lang/Object;
.source "TopicFeaturedListPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/community/b/k;


# instance fields
.field a:Lcom/xueqiu/android/community/b/l;

.field b:I

.field c:I

.field private d:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/b/l;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/d/d;->b:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/d/d;->c:I

    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    .line 32
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/d/d;->d:Lcom/xueqiu/android/base/b/ai;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 88
    .line 1037
    iget-object v1, p0, Lcom/xueqiu/android/community/d/d;->d:Lcom/xueqiu/android/base/b/ai;

    new-instance v2, Lcom/xueqiu/android/community/d/d$1;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    check-cast v0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/d/d$1;-><init>(Lcom/xueqiu/android/community/d/d;Lcom/xueqiu/android/base/b/q;)V

    .line 1462
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/b/aj;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 89
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/d/d;->b:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/d/d;->c:I

    .line 63
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/d/d;->c:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xueqiu/android/community/d/d;->b:I

    iget v1, p0, Lcom/xueqiu/android/community/d/d;->c:I

    if-le v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    invoke-interface {v0}, Lcom/xueqiu/android/community/b/l;->j()V

    .line 84
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/d/d;->d:Lcom/xueqiu/android/base/b/ai;

    iget v2, p0, Lcom/xueqiu/android/community/d/d;->b:I

    const/16 v3, 0xa

    const/4 v4, 0x0

    new-instance v5, Lcom/xueqiu/android/community/d/d$2;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    check-cast v0, Lcom/xueqiu/android/community/TopicFeaturedListActivity;

    invoke-direct {v5, p0, v0, p1}, Lcom/xueqiu/android/community/d/d$2;-><init>(Lcom/xueqiu/android/community/d/d;Lcom/xueqiu/android/base/b/q;Z)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xueqiu/android/base/b/ai;->a(IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
