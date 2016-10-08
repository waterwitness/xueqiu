.class final Lcom/xueqiu/android/cube/CubeActivity$18;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$18;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeActivity$18;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1111
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$18;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Landroid/widget/TextView;Z)V

    .line 1112
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$18;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(Landroid/widget/TextView;Z)V

    .line 1113
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$18;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$18;->b:Lcom/xueqiu/android/cube/CubeActivity;

    const-string v1, "all"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Ljava/lang/String;J)V

    .line 1116
    :cond_0
    return-void
.end method
