.class public final enum Lcom/viewpagerindicator/p;
.super Ljava/lang/Enum;
.source "TitlePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viewpagerindicator/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viewpagerindicator/p;

.field public static final enum b:Lcom/viewpagerindicator/p;

.field private static final synthetic d:[Lcom/viewpagerindicator/p;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/viewpagerindicator/p;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v2, v2}, Lcom/viewpagerindicator/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/p;

    new-instance v0, Lcom/viewpagerindicator/p;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3, v3}, Lcom/viewpagerindicator/p;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/p;->b:Lcom/viewpagerindicator/p;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viewpagerindicator/p;

    sget-object v1, Lcom/viewpagerindicator/p;->a:Lcom/viewpagerindicator/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viewpagerindicator/p;->b:Lcom/viewpagerindicator/p;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viewpagerindicator/p;->d:[Lcom/viewpagerindicator/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/viewpagerindicator/p;->c:I

    .line 105
    return-void
.end method

.method public static a(I)Lcom/viewpagerindicator/p;
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Lcom/viewpagerindicator/p;->values()[Lcom/viewpagerindicator/p;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 109
    iget v4, v0, Lcom/viewpagerindicator/p;->c:I

    if-ne v4, p0, :cond_0

    .line 113
    :goto_1
    return-object v0

    .line 108
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viewpagerindicator/p;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/viewpagerindicator/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/p;

    return-object v0
.end method

.method public static values()[Lcom/viewpagerindicator/p;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/viewpagerindicator/p;->d:[Lcom/viewpagerindicator/p;

    invoke-virtual {v0}, [Lcom/viewpagerindicator/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viewpagerindicator/p;

    return-object v0
.end method
