.class public final Landroid/support/v4/view/ba;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field public final a:Landroid/view/View;

.field public b:Landroid/view/ViewParent;

.field public c:Z

.field public d:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/support/v4/view/ba;->a:Landroid/view/View;

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/view/ba;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
