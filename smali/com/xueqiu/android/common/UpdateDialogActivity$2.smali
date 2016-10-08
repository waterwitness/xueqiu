.class final Lcom/xueqiu/android/common/UpdateDialogActivity$2;
.super Ljava/lang/Object;
.source "UpdateDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/UpdateDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/UpdateDialogActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/UpdateDialogActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xueqiu/android/common/UpdateDialogActivity$2;->a:Lcom/xueqiu/android/common/UpdateDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/UpdateDialogActivity$2;->a:Lcom/xueqiu/android/common/UpdateDialogActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/UpdateDialogActivity;->finish()V

    .line 73
    return-void
.end method
