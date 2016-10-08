.class final Lcom/xueqiu/android/cube/CubeActivity$48;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/cube/model/NavDailyList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/Date;

.field final synthetic c:I

.field final synthetic d:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;JLjava/util/Date;I)V
    .locals 1

    .prologue
    .line 2106
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$48;->d:Lcom/xueqiu/android/cube/CubeActivity;

    iput-wide p3, p0, Lcom/xueqiu/android/cube/CubeActivity$48;->a:J

    iput-object p5, p0, Lcom/xueqiu/android/cube/CubeActivity$48;->b:Ljava/util/Date;

    iput p6, p0, Lcom/xueqiu/android/cube/CubeActivity$48;->c:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 2109
    const-string v0, "CubeActivity"

    const-string v1, "getCubeNAVDaily failed."

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2110
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 2106
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 3114
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$48;->d:Lcom/xueqiu/android/cube/CubeActivity;

    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeActivity$48;->a:J

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity$48;->b:Ljava/util/Date;

    iget v5, p0, Lcom/xueqiu/android/cube/CubeActivity$48;->c:I

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Ljava/util/List;JLjava/util/Date;I)V

    .line 2106
    return-void
.end method
