.class final Lcom/kwlopen/sdk/camera/FocusImageView$2;
.super Ljava/lang/Object;
.source "FocusImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwlopen/sdk/camera/FocusImageView;
.end annotation


# instance fields
.field final synthetic a:Lcom/kwlopen/sdk/camera/FocusImageView;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/camera/FocusImageView;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kwlopen/sdk/camera/FocusImageView$2;->a:Lcom/kwlopen/sdk/camera/FocusImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kwlopen/sdk/camera/FocusImageView$2;->a:Lcom/kwlopen/sdk/camera/FocusImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kwlopen/sdk/camera/FocusImageView;->setVisibility(I)V

    .line 107
    return-void
.end method
