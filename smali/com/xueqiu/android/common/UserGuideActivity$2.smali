.class final Lcom/xueqiu/android/common/UserGuideActivity$2;
.super Ljava/lang/Object;
.source "UserGuideActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/UserGuideActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/UserGuideActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/UserGuideActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/xueqiu/android/common/UserGuideActivity$2;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity$2;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/UserGuideActivity;->c(Lcom/xueqiu/android/common/UserGuideActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity$2;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/UserGuideActivity;->d(Lcom/xueqiu/android/common/UserGuideActivity;)V

    .line 98
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity$2;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/UserGuideActivity;->e(Lcom/xueqiu/android/common/UserGuideActivity;)V

    .line 105
    return-void
.end method
