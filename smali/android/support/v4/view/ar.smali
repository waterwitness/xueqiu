.class final Landroid/support/v4/view/ar;
.super Ljava/lang/Object;
.source "MenuItemCompatIcs.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field private a:Landroid/support/v4/view/as;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/as;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/support/v4/view/ar;->a:Landroid/support/v4/view/as;

    .line 56
    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/view/ar;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p1}, Landroid/support/v4/view/as;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/view/ar;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p1}, Landroid/support/v4/view/as;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
