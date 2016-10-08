.class final Lcom/xueqiu/android/cube/CubeTopListActivity$1;
.super Ljava/lang/Object;
.source "CubeTopListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeTopListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeTopListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$1;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$1;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->onBackPressed()V

    .line 101
    return-void
.end method
