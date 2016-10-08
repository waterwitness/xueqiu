.class public final Lcom/xueqiu/android/community/d/a;
.super Ljava/lang/Object;
.source "PaidMentionPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/community/b/b;


# instance fields
.field public a:Lcom/xueqiu/android/community/b/c;

.field b:J

.field c:J

.field d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/b/c;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/xueqiu/android/community/d/a;->e:I

    .line 33
    iput-wide v2, p0, Lcom/xueqiu/android/community/d/a;->b:J

    .line 35
    iput-wide v2, p0, Lcom/xueqiu/android/community/d/a;->c:J

    .line 37
    iput v0, p0, Lcom/xueqiu/android/community/d/a;->f:I

    .line 80
    iput-boolean v0, p0, Lcom/xueqiu/android/community/d/a;->d:Z

    .line 40
    iput-object p1, p0, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    .line 41
    iput p2, p0, Lcom/xueqiu/android/community/d/a;->f:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/d/a;->b(Z)V

    .line 2046
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/d/a$1;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    check-cast v0, Lcom/xueqiu/android/community/c/m;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/d/a$1;-><init>(Lcom/xueqiu/android/community/d/a;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/b/ai;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 190
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 83
    iget-boolean v2, p0, Lcom/xueqiu/android/community/d/a;->d:Z

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    .line 88
    iget-wide v2, p0, Lcom/xueqiu/android/community/d/a;->c:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 92
    iget-wide v0, p0, Lcom/xueqiu/android/community/d/a;->c:J

    move-wide v2, v0

    .line 97
    :goto_1
    iget v0, p0, Lcom/xueqiu/android/community/d/a;->f:I

    if-nez v0, :cond_3

    .line 98
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget v4, p0, Lcom/xueqiu/android/community/d/a;->e:I

    new-instance v5, Lcom/xueqiu/android/community/d/a$3;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    check-cast v0, Lcom/xueqiu/android/community/c/m;

    invoke-direct {v5, p0, v0, p1}, Lcom/xueqiu/android/community/d/a$3;-><init>(Lcom/xueqiu/android/community/d/a;Lcom/xueqiu/android/base/b/q;Z)V

    .line 1724
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/xueqiu/android/base/b/aj;->a(IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 126
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/d/a;->d:Z

    goto :goto_0

    :cond_2
    move-wide v2, v0

    .line 95
    goto :goto_1

    .line 112
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget v4, p0, Lcom/xueqiu/android/community/d/a;->e:I

    new-instance v5, Lcom/xueqiu/android/community/d/a$4;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/a;->a:Lcom/xueqiu/android/community/b/c;

    check-cast v0, Lcom/xueqiu/android/community/c/m;

    invoke-direct {v5, p0, v0, p1}, Lcom/xueqiu/android/community/d/a$4;-><init>(Lcom/xueqiu/android/community/d/a;Lcom/xueqiu/android/base/b/q;Z)V

    .line 1728
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/xueqiu/android/base/b/aj;->b(IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_2
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    if-eqz p1, :cond_0

    .line 179
    iput v1, p0, Lcom/xueqiu/android/community/d/a;->e:I

    .line 183
    :goto_0
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/d/a;->a(Z)V

    .line 184
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/d/a;->e:I

    goto :goto_0
.end method
