.class final Lcom/xueqiu/android/common/ShareActivity$11;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ShareActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ShareActivity;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/xueqiu/android/common/ShareActivity$11;->a:Lcom/xueqiu/android/common/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 212
    const-string v0, "http://xueqiu.com/law/share-comment"

    iget-object v1, p0, Lcom/xueqiu/android/common/ShareActivity$11;->a:Lcom/xueqiu/android/common/ShareActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 213
    return-void
.end method
