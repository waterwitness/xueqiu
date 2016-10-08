.class final Landroid/support/v4/view/de;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v4/view/dc;

.field final synthetic c:Landroid/support/v4/view/dd;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/dd;Landroid/support/v4/view/dc;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 320
    iput-object p1, p0, Landroid/support/v4/view/de;->c:Landroid/support/v4/view/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/de;->a:Ljava/lang/ref/WeakReference;

    .line 322
    iput-object p2, p0, Landroid/support/v4/view/de;->b:Landroid/support/v4/view/dc;

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/dd;Landroid/support/v4/view/dc;Landroid/view/View;B)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/view/de;-><init>(Landroid/support/v4/view/dd;Landroid/support/v4/view/dc;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Landroid/support/v4/view/de;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Landroid/support/v4/view/de;->c:Landroid/support/v4/view/dd;

    iget-object v2, p0, Landroid/support/v4/view/de;->b:Landroid/support/v4/view/dc;

    .line 1081
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/view/dd;->c(Landroid/support/v4/view/dc;Landroid/view/View;)V

    .line 331
    :cond_0
    return-void
.end method
