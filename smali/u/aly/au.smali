.class public final enum Lu/aly/au;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/au;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/au;

.field public static final enum b:Lu/aly/au;

.field public static final enum c:Lu/aly/au;

.field private static final synthetic e:[Lu/aly/au;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lu/aly/au;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2, v2}, Lu/aly/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/au;->a:Lu/aly/au;

    .line 17
    new-instance v0, Lu/aly/au;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3, v3}, Lu/aly/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/au;->b:Lu/aly/au;

    .line 18
    new-instance v0, Lu/aly/au;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lu/aly/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/au;->c:Lu/aly/au;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lu/aly/au;

    sget-object v1, Lu/aly/au;->a:Lu/aly/au;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/au;->b:Lu/aly/au;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/au;->c:Lu/aly/au;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/au;->e:[Lu/aly/au;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lu/aly/au;->d:I

    .line 24
    return-void
.end method

.method public static a(I)Lu/aly/au;
    .locals 1

    .prologue
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 46
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    sget-object v0, Lu/aly/au;->a:Lu/aly/au;

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v0, Lu/aly/au;->b:Lu/aly/au;

    goto :goto_0

    .line 44
    :pswitch_2
    sget-object v0, Lu/aly/au;->c:Lu/aly/au;

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/au;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/au;

    return-object v0
.end method

.method public static values()[Lu/aly/au;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/au;->e:[Lu/aly/au;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/au;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
