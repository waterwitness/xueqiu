.class final Lcom/xueqiu/android/common/GuideTutorialActivity$2;
.super Ljava/lang/Object;
.source "GuideTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/GuideTutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/xueqiu/android/common/GuideTutorialActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/GuideTutorialActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xueqiu/android/common/GuideTutorialActivity$2;->c:Lcom/xueqiu/android/common/GuideTutorialActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/GuideTutorialActivity$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/xueqiu/android/common/GuideTutorialActivity$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/common/GuideTutorialActivity$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/GuideTutorialActivity$2;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    return-void
.end method
