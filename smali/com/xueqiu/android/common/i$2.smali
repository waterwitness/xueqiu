.class final Lcom/xueqiu/android/common/i$2;
.super Ljava/lang/Object;
.source "InterestedTopicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/i;->C()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/i;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/xueqiu/android/common/i$2;->a:Lcom/xueqiu/android/common/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/common/i$2;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->a(Lcom/xueqiu/android/common/i;)Lcom/xueqiu/android/common/widget/FlowLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FlowLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/common/i$2;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->b(Lcom/xueqiu/android/common/i;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/xueqiu/android/common/i$2;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v1}, Lcom/xueqiu/android/common/i;->a(Lcom/xueqiu/android/common/i;)Lcom/xueqiu/android/common/widget/FlowLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/FlowLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-static {}, Lcom/xueqiu/android/common/i;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "playShowAnim Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
