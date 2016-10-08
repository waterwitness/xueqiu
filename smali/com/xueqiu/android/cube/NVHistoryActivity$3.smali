.class final Lcom/xueqiu/android/cube/NVHistoryActivity$3;
.super Ljava/lang/Object;
.source "NVHistoryActivity.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/NVHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/cube/model/HistoryValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/cube/NVHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/NVHistoryActivity;I)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$3;->c:Lcom/xueqiu/android/cube/NVHistoryActivity;

    iput p2, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$3;->a:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 153
    check-cast p1, Lrx/i;

    .line 3156
    invoke-static {}, Lcom/xueqiu/android/cube/NVHistoryActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$3;->c:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->i(Lcom/xueqiu/android/cube/NVHistoryActivity;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$3;->a:I

    iget v4, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$3;->b:I

    new-instance v5, Lcom/xueqiu/android/cube/NVHistoryActivity$3$1;

    iget-object v2, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$3;->c:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-direct {v5, p0, v2, p1}, Lcom/xueqiu/android/cube/NVHistoryActivity$3$1;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity$3;Lcom/xueqiu/android/base/b/q;Lrx/i;)V

    .line 3446
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 153
    return-void
.end method
