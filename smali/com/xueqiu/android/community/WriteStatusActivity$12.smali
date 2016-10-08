.class final Lcom/xueqiu/android/community/WriteStatusActivity$12;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$12;->b:Lcom/xueqiu/android/community/WriteStatusActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$12;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$12;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 389
    return-void
.end method
