.class final Landroid/support/v7/widget/ai;
.super Landroid/view/View$BaseSavedState;
.source "RecyclerView.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/widget/ai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7563
    new-instance v0, Landroid/support/v7/widget/ai$1;

    invoke-direct {v0}, Landroid/support/v7/widget/ai$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ai;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 7542
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 7543
    const-class v0, Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ai;->a:Landroid/os/Parcelable;

    .line 7544
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 7550
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 7551
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ai;Landroid/support/v7/widget/ai;)V
    .locals 1

    .prologue
    .line 7534
    .line 8560
    iget-object v0, p1, Landroid/support/v7/widget/ai;->a:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v7/widget/ai;->a:Landroid/os/Parcelable;

    .line 7534
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 7555
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7556
    iget-object v0, p0, Landroid/support/v7/widget/ai;->a:Landroid/os/Parcelable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7557
    return-void
.end method
