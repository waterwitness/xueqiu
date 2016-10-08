.class final Lcom/xueqiu/android/cube/CubeListActivity$2$1;
.super Ljava/lang/Object;
.source "CubeListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeListActivity$2;->a(Lcom/xueqiu/android/cube/model/Cube;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Cube;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeListActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeListActivity$2;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeListActivity$2$1;->b:Lcom/xueqiu/android/cube/CubeListActivity$2;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeListActivity$2$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$2$1;->b:Lcom/xueqiu/android/cube/CubeListActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeListActivity$2;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity$2$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeListActivity;->a(Lcom/xueqiu/android/cube/CubeListActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 106
    return-void
.end method
