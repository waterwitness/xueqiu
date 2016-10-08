.class final Lcom/xueqiu/android/cube/CubeActivity$28;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$28;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeActivity$28;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$28;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1491
    return-void
.end method
