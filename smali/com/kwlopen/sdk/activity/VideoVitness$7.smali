.class Lcom/kwlopen/sdk/activity/VideoVitness$7;
.super Ljava/lang/Object;
.source "VideoVitness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/VideoVitness;->ShowEndSessionResumeDialg()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/VideoVitness;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/VideoVitness;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/VideoVitness$7;->this$0:Lcom/kwlopen/sdk/activity/VideoVitness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 795
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 796
    return-void
.end method
