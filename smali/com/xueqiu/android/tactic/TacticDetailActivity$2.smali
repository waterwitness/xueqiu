.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$2;
.super Ljava/lang/Object;
.source "TacticDetailActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/ap;

.field final synthetic b:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/common/widget/ap;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$2;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$2;->a:Lcom/xueqiu/android/common/widget/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$2;->a:Lcom/xueqiu/android/common/widget/ap;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ap;->dismiss()V

    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$2;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    const-string v1, "cache_dialog"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 413
    return-void
.end method
