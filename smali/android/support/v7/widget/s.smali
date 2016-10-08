.class public abstract Landroid/support/v7/widget/s;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/ao;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v7/widget/t;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4069
    new-instance v0, Landroid/support/v7/widget/t;

    invoke-direct {v0}, Landroid/support/v7/widget/t;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    .line 4070
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/s;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/support/v7/widget/ao;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public final b(Landroid/support/v7/widget/ao;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 4134
    iput p2, p1, Landroid/support/v7/widget/ao;->b:I

    .line 5202
    iget-boolean v0, p0, Landroid/support/v7/widget/s;->b:Z

    .line 4135
    if-eqz v0, :cond_0

    .line 4136
    const-wide/16 v0, -0x1

    iput-wide v0, p1, Landroid/support/v7/widget/ao;->d:J

    .line 4138
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/s;->a(Landroid/support/v7/widget/ao;I)V

    .line 4139
    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/ao;->a(II)V

    .line 4141
    return-void
.end method
