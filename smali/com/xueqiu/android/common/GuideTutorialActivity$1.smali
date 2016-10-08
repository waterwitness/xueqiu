.class final Lcom/xueqiu/android/common/GuideTutorialActivity$1;
.super Ljava/lang/Object;
.source "GuideTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/GuideTutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/GuideTutorialActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/GuideTutorialActivity;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/xueqiu/android/common/GuideTutorialActivity$1;->a:Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/common/GuideTutorialActivity$1;->a:Lcom/xueqiu/android/common/GuideTutorialActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/GuideTutorialActivity;->finish()V

    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/common/GuideTutorialActivity$1;->a:Lcom/xueqiu/android/common/GuideTutorialActivity;

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/GuideTutorialActivity;->overridePendingTransition(II)V

    .line 45
    return-void
.end method
