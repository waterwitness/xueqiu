.class final Lcom/xueqiu/android/community/WriteStatusActivity$21;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$21;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$21;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$21;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const-class v3, Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->startActivity(Landroid/content/Intent;)V

    .line 1242
    return-void
.end method
