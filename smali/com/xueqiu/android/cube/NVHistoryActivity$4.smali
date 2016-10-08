.class final Lcom/xueqiu/android/cube/NVHistoryActivity$4;
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
    .line 172
    iput-object p1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;->c:Lcom/xueqiu/android/cube/NVHistoryActivity;

    iput p2, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;->a:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 172
    check-cast p1, Lrx/i;

    .line 3175
    invoke-static {}, Lcom/xueqiu/android/cube/NVHistoryActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;->c:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->j(Lcom/xueqiu/android/cube/NVHistoryActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;->c:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->i(Lcom/xueqiu/android/cube/NVHistoryActivity;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;->a:I

    iget v6, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;->b:I

    new-instance v7, Lcom/xueqiu/android/cube/NVHistoryActivity$4$1;

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$4;->c:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-direct {v7, p0, v1, p1}, Lcom/xueqiu/android/cube/NVHistoryActivity$4$1;-><init>(Lcom/xueqiu/android/cube/NVHistoryActivity$4;Lcom/xueqiu/android/base/b/q;Lrx/i;)V

    .line 3442
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/c;->a(JLjava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 172
    return-void
.end method
