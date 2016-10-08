.class public final Lcom/xueqiu/android/tactic/e/a;
.super Ljava/lang/Object;
.source "MyPushListPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/tactic/b/b;


# instance fields
.field a:J

.field b:J

.field c:Lcom/xueqiu/android/tactic/b/c;

.field private d:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/tactic/b/c;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/xueqiu/android/tactic/e/a;->a:J

    .line 17
    iput-wide v0, p0, Lcom/xueqiu/android/tactic/e/a;->b:J

    .line 22
    iput-object p1, p0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    .line 23
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/tactic/e/a;->d:Lcom/xueqiu/android/base/b/ai;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/tactic/e/a;->a(Z)V

    .line 29
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 34
    if-eqz p1, :cond_1

    .line 35
    iget-wide v2, p0, Lcom/xueqiu/android/tactic/e/a;->a:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-wide v4, p0, Lcom/xueqiu/android/tactic/e/a;->a:J

    move-wide v2, v0

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/tactic/e/a;->d:Lcom/xueqiu/android/base/b/ai;

    new-instance v6, Lcom/xueqiu/android/tactic/e/a$1;

    iget-object v0, p0, Lcom/xueqiu/android/tactic/e/a;->c:Lcom/xueqiu/android/tactic/b/c;

    check-cast v0, Lcom/xueqiu/android/tactic/MyPushListActivity;

    invoke-direct {v6, p0, v0, p1}, Lcom/xueqiu/android/tactic/e/a$1;-><init>(Lcom/xueqiu/android/tactic/e/a;Lcom/xueqiu/android/base/b/q;Z)V

    .line 4388
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/al;->a(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 41
    :cond_1
    iget-wide v2, p0, Lcom/xueqiu/android/tactic/e/a;->b:J

    move-wide v4, v0

    .line 42
    goto :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
