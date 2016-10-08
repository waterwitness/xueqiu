.class final Lcom/xueqiu/android/common/ImageActivity$2;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/ImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ImageActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ImageActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xueqiu/android/common/ImageActivity$2;->a:Lcom/xueqiu/android/common/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xueqiu_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/xueqiu/android/common/ImageActivity$2;->a:Lcom/xueqiu/android/common/ImageActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/ImageActivity;->a(Lcom/xueqiu/android/common/ImageActivity;Ljava/lang/String;)V

    .line 81
    return-void
.end method
