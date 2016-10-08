.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$7;
.super Ljava/lang/Object;
.source "TacticDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$7;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$7;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->onBackPressed()V

    .line 188
    return-void
.end method
