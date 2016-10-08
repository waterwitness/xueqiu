.class final Lcom/xueqiu/android/cube/EditorialHistoryActivity$2;
.super Ljava/lang/Object;
.source "EditorialHistoryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/EditorialHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/EditorialHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/EditorialHistoryActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$2;->a:Lcom/xueqiu/android/cube/EditorialHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$2;->a:Lcom/xueqiu/android/cube/EditorialHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/EditorialHistoryActivity;->b(Lcom/xueqiu/android/cube/EditorialHistoryActivity;)Lcom/xueqiu/android/cube/m;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Editorial;

    .line 82
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/EditorialHistoryActivity$2;->a:Lcom/xueqiu/android/cube/EditorialHistoryActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 83
    return-void
.end method
