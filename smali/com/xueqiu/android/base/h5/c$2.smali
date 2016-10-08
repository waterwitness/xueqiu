.class final Lcom/xueqiu/android/base/h5/c$2;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/b;JJ)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/b;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;JJ)V
    .locals 1

    .prologue
    .line 975
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$2;->a:Lcom/xueqiu/android/base/h5/b;

    iput-wide p3, p0, Lcom/xueqiu/android/base/h5/c$2;->b:J

    iput-wide p5, p0, Lcom/xueqiu/android/base/h5/c$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 978
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->c(Lcom/xueqiu/android/base/h5/c;)I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 979
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->d(Lcom/xueqiu/android/base/h5/c;)Lrx/j;

    move-result-object v0

    invoke-interface {v0}, Lrx/j;->b()V

    .line 980
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->e(Lcom/xueqiu/android/base/h5/c;)Lrx/j;

    .line 981
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$2;->a:Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Z)V

    .line 1011
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$2;->d:Lcom/xueqiu/android/base/h5/c;

    iget-wide v2, p0, Lcom/xueqiu/android/base/h5/c$2;->b:J

    iget-wide v4, p0, Lcom/xueqiu/android/base/h5/c$2;->c:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;JJ)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/h5/c$2$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/base/h5/c$2$1;-><init>(Lcom/xueqiu/android/base/h5/c$2;)V

    .line 986
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto :goto_0
.end method
