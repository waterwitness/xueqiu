.class final Lcom/xueqiu/android/trade/patternlock/j;
.super Landroid/view/View$BaseSavedState;
.source "PatternView.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xueqiu/android/trade/patternlock/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1156
    new-instance v0, Lcom/xueqiu/android/trade/patternlock/j$1;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/patternlock/j$1;-><init>()V

    sput-object v0, Lcom/xueqiu/android/trade/patternlock/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1124
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/patternlock/j;->a:Ljava/lang/String;

    .line 1126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/trade/patternlock/j;->b:I

    .line 1127
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/j;->c:Z

    .line 1128
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/j;->d:Z

    .line 1129
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 1101
    invoke-direct {p0, p1}, Lcom/xueqiu/android/trade/patternlock/j;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZ)V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1114
    iput-object p2, p0, Lcom/xueqiu/android/trade/patternlock/j;->a:Ljava/lang/String;

    .line 1115
    iput p3, p0, Lcom/xueqiu/android/trade/patternlock/j;->b:I

    .line 1116
    iput-boolean p4, p0, Lcom/xueqiu/android/trade/patternlock/j;->c:Z

    .line 1117
    iput-boolean p5, p0, Lcom/xueqiu/android/trade/patternlock/j;->d:Z

    .line 1118
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZB)V
    .locals 0

    .prologue
    .line 1101
    invoke-direct/range {p0 .. p5}, Lcom/xueqiu/android/trade/patternlock/j;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1149
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1150
    iget-object v0, p0, Lcom/xueqiu/android/trade/patternlock/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1151
    iget v0, p0, Lcom/xueqiu/android/trade/patternlock/j;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/j;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1153
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/patternlock/j;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1154
    return-void
.end method
