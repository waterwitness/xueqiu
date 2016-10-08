.class final Landroid/support/v7/internal/widget/ad;
.super Ljava/lang/Object;
.source "ProgressBarICS.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/internal/widget/ac;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ac;II)V
    .locals 1

    .prologue
    .line 396
    iput-object p1, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/support/v7/internal/widget/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput p2, p0, Landroid/support/v7/internal/widget/ad;->a:I

    .line 398
    iput p3, p0, Landroid/support/v7/internal/widget/ad;->b:I

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ad;->c:Z

    .line 400
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/support/v7/internal/widget/ac;

    iget v1, p0, Landroid/support/v7/internal/widget/ad;->a:I

    iget v2, p0, Landroid/support/v7/internal/widget/ad;->b:I

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/ac;->a(Landroid/support/v7/internal/widget/ac;II)V

    .line 405
    iget-object v0, p0, Landroid/support/v7/internal/widget/ad;->d:Landroid/support/v7/internal/widget/ac;

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/ac;->a(Landroid/support/v7/internal/widget/ac;Landroid/support/v7/internal/widget/ad;)Landroid/support/v7/internal/widget/ad;

    .line 406
    return-void
.end method
