.class final Lcom/xueqiu/android/base/h5/c$3;
.super Ljava/lang/Object;
.source "H5Fragment.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/cube/model/OrderStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;JJ)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$3;->c:Lcom/xueqiu/android/base/h5/c;

    iput-wide p2, p0, Lcom/xueqiu/android/base/h5/c$3;->a:J

    iput-wide p4, p0, Lcom/xueqiu/android/base/h5/c$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1016
    check-cast p1, Lrx/i;

    .line 3019
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$3;->c:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/base/h5/c$3;->a:J

    iget-wide v4, p0, Lcom/xueqiu/android/base/h5/c$3;->b:J

    new-instance v6, Lcom/xueqiu/android/base/h5/c$3$1;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$3;->c:Lcom/xueqiu/android/base/h5/c;

    invoke-direct {v6, p0, v1, p1}, Lcom/xueqiu/android/base/h5/c$3$1;-><init>(Lcom/xueqiu/android/base/h5/c$3;Lcom/xueqiu/android/base/b/q;Lrx/i;)V

    .line 3571
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/c;->a(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1016
    return-void
.end method
