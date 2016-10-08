.class public final Lcom/xueqiu/android/community/d/c;
.super Ljava/lang/Object;
.source "TopicDetailPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/community/b/h;


# instance fields
.field public a:Lcom/xueqiu/android/community/b/i;

.field public b:Lcom/xueqiu/android/base/b/ai;

.field c:I

.field d:Z

.field public e:Z

.field f:I

.field public g:J

.field h:I


# direct methods
.method public constructor <init>(JLcom/xueqiu/android/community/b/i;)V
    .locals 1
    .param p3    # Lcom/xueqiu/android/community/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/xueqiu/android/community/d/c;->c:I

    .line 60
    iput-boolean v0, p0, Lcom/xueqiu/android/community/d/c;->d:Z

    .line 62
    iput-boolean v0, p0, Lcom/xueqiu/android/community/d/c;->e:Z

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/d/c;->f:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/community/d/c;->h:I

    .line 71
    iput-object p3, p0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 72
    iput-wide p1, p0, Lcom/xueqiu/android/community/d/c;->g:J

    .line 73
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/d/c;->b:Lcom/xueqiu/android/base/b/ai;

    .line 74
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 329
    .line 2078
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c;->b:Lcom/xueqiu/android/base/b/ai;

    iget-wide v2, p0, Lcom/xueqiu/android/community/d/c;->g:J

    new-instance v4, Lcom/xueqiu/android/community/d/c$1;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    check-cast v0, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {v4, p0, v0}, Lcom/xueqiu/android/community/d/c$1;-><init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/base/b/q;)V

    .line 2480
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v2, v3, v4}, Lcom/xueqiu/android/base/b/aj;->c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 330
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 103
    iget v1, p0, Lcom/xueqiu/android/community/d/c;->f:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 194
    iget v0, p0, Lcom/xueqiu/android/community/d/c;->h:I

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/d/c;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xueqiu/android/community/d/c;->c:I

    iget v1, p0, Lcom/xueqiu/android/community/d/c;->h:I

    if-gt v0, v1, :cond_3

    .line 198
    :cond_2
    iget-boolean v0, p0, Lcom/xueqiu/android/community/d/c;->d:Z

    if-eqz v0, :cond_0

    .line 199
    iput-boolean v2, p0, Lcom/xueqiu/android/community/d/c;->d:Z

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/community/b/i;->c(Z)V

    .line 209
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c;->b:Lcom/xueqiu/android/base/b/ai;

    iget-wide v2, p0, Lcom/xueqiu/android/community/d/c;->g:J

    iget v4, p0, Lcom/xueqiu/android/community/d/c;->c:I

    new-instance v5, Lcom/xueqiu/android/community/d/c$6;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    check-cast v0, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-direct {v5, p0, v0}, Lcom/xueqiu/android/community/d/c$6;-><init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/base/b/q;)V

    .line 1474
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/xueqiu/android/base/b/aj;->a(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    invoke-interface {v0, v2}, Lcom/xueqiu/android/community/b/i;->c(Z)V

    goto :goto_0
.end method
