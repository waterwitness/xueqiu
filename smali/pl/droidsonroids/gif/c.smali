.class public final enum Lpl/droidsonroids/gif/c;
.super Ljava/lang/Enum;
.source "GifError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lpl/droidsonroids/gif/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lpl/droidsonroids/gif/c;

.field public static final enum b:Lpl/droidsonroids/gif/c;

.field public static final enum c:Lpl/droidsonroids/gif/c;

.field public static final enum d:Lpl/droidsonroids/gif/c;

.field public static final enum e:Lpl/droidsonroids/gif/c;

.field public static final enum f:Lpl/droidsonroids/gif/c;

.field public static final enum g:Lpl/droidsonroids/gif/c;

.field public static final enum h:Lpl/droidsonroids/gif/c;

.field public static final enum i:Lpl/droidsonroids/gif/c;

.field public static final enum j:Lpl/droidsonroids/gif/c;

.field public static final enum k:Lpl/droidsonroids/gif/c;

.field public static final enum l:Lpl/droidsonroids/gif/c;

.field public static final enum m:Lpl/droidsonroids/gif/c;

.field public static final enum n:Lpl/droidsonroids/gif/c;

.field public static final enum o:Lpl/droidsonroids/gif/c;

.field public static final enum p:Lpl/droidsonroids/gif/c;

.field public static final enum q:Lpl/droidsonroids/gif/c;

.field public static final enum r:Lpl/droidsonroids/gif/c;

.field public static final enum s:Lpl/droidsonroids/gif/c;

.field public static final enum t:Lpl/droidsonroids/gif/c;

.field public static final enum u:Lpl/droidsonroids/gif/c;

.field private static final synthetic x:[Lpl/droidsonroids/gif/c;


# instance fields
.field public final v:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field w:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 18
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "NO_ERROR"

    const-string v2, "No error"

    invoke-direct {v0, v1, v5, v5, v2}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->a:Lpl/droidsonroids/gif/c;

    .line 22
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "OPEN_FAILED"

    const/16 v2, 0x65

    const-string v3, "Failed to open given input"

    invoke-direct {v0, v1, v6, v2, v3}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->b:Lpl/droidsonroids/gif/c;

    .line 26
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "READ_FAILED"

    const/16 v2, 0x66

    const-string v3, "Failed to read from given input"

    invoke-direct {v0, v1, v7, v2, v3}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->c:Lpl/droidsonroids/gif/c;

    .line 30
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "NOT_GIF_FILE"

    const/16 v2, 0x67

    const-string v3, "Data is not in GIF format"

    invoke-direct {v0, v1, v8, v2, v3}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->d:Lpl/droidsonroids/gif/c;

    .line 34
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "NO_SCRN_DSCR"

    const/16 v2, 0x68

    const-string v3, "No screen descriptor detected"

    invoke-direct {v0, v1, v9, v2, v3}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->e:Lpl/droidsonroids/gif/c;

    .line 38
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "NO_IMAG_DSCR"

    const/4 v2, 0x5

    const/16 v3, 0x69

    const-string v4, "No image descriptor detected"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/c;

    .line 42
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "NO_COLOR_MAP"

    const/4 v2, 0x6

    const/16 v3, 0x6a

    const-string v4, "Neither global nor local color map found"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->g:Lpl/droidsonroids/gif/c;

    .line 46
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "WRONG_RECORD"

    const/4 v2, 0x7

    const/16 v3, 0x6b

    const-string v4, "Wrong record type detected"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->h:Lpl/droidsonroids/gif/c;

    .line 50
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "DATA_TOO_BIG"

    const/16 v2, 0x8

    const/16 v3, 0x6c

    const-string v4, "Number of pixels bigger than width * height"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/c;

    .line 54
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "NOT_ENOUGH_MEM"

    const/16 v2, 0x9

    const/16 v3, 0x6d

    const-string v4, "Failed to allocate required memory"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->j:Lpl/droidsonroids/gif/c;

    .line 58
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "CLOSE_FAILED"

    const/16 v2, 0xa

    const/16 v3, 0x6e

    const-string v4, "Failed to close given input"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->k:Lpl/droidsonroids/gif/c;

    .line 62
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "NOT_READABLE"

    const/16 v2, 0xb

    const/16 v3, 0x6f

    const-string v4, "Given file was not opened for read"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->l:Lpl/droidsonroids/gif/c;

    .line 66
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "IMAGE_DEFECT"

    const/16 v2, 0xc

    const/16 v3, 0x70

    const-string v4, "Image is defective, decoding aborted"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->m:Lpl/droidsonroids/gif/c;

    .line 71
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "EOF_TOO_SOON"

    const/16 v2, 0xd

    const/16 v3, 0x71

    const-string v4, "Image EOF detected before image complete"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->n:Lpl/droidsonroids/gif/c;

    .line 75
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "NO_FRAMES"

    const/16 v2, 0xe

    const/16 v3, 0x3e8

    const-string v4, "No frames found, at least one frame required"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->o:Lpl/droidsonroids/gif/c;

    .line 79
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "INVALID_SCR_DIMS"

    const/16 v2, 0xf

    const/16 v3, 0x3e9

    const-string v4, "Invalid screen size, dimensions must be positive"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->p:Lpl/droidsonroids/gif/c;

    .line 83
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "INVALID_IMG_DIMS"

    const/16 v2, 0x10

    const/16 v3, 0x3ea

    const-string v4, "Invalid image size, dimensions must be positive"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->q:Lpl/droidsonroids/gif/c;

    .line 87
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "IMG_NOT_CONFINED"

    const/16 v2, 0x11

    const/16 v3, 0x3eb

    const-string v4, "Image size exceeds screen size"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->r:Lpl/droidsonroids/gif/c;

    .line 91
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "REWIND_FAILED"

    const/16 v2, 0x12

    const/16 v3, 0x3ec

    const-string v4, "Input source rewind has failed, animation is stopped"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->s:Lpl/droidsonroids/gif/c;

    .line 95
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "INVALID_BYTE_BUFFER"

    const/16 v2, 0x13

    const/16 v3, 0x3ed

    const-string v4, "Invalid and/or indirect byte buffer specified"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->t:Lpl/droidsonroids/gif/c;

    .line 99
    new-instance v0, Lpl/droidsonroids/gif/c;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x14

    const/4 v3, -0x1

    const-string v4, "Unknown error"

    invoke-direct {v0, v1, v2, v3, v4}, Lpl/droidsonroids/gif/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lpl/droidsonroids/gif/c;->u:Lpl/droidsonroids/gif/c;

    .line 13
    const/16 v0, 0x15

    new-array v0, v0, [Lpl/droidsonroids/gif/c;

    sget-object v1, Lpl/droidsonroids/gif/c;->a:Lpl/droidsonroids/gif/c;

    aput-object v1, v0, v5

    sget-object v1, Lpl/droidsonroids/gif/c;->b:Lpl/droidsonroids/gif/c;

    aput-object v1, v0, v6

    sget-object v1, Lpl/droidsonroids/gif/c;->c:Lpl/droidsonroids/gif/c;

    aput-object v1, v0, v7

    sget-object v1, Lpl/droidsonroids/gif/c;->d:Lpl/droidsonroids/gif/c;

    aput-object v1, v0, v8

    sget-object v1, Lpl/droidsonroids/gif/c;->e:Lpl/droidsonroids/gif/c;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lpl/droidsonroids/gif/c;->f:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lpl/droidsonroids/gif/c;->g:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lpl/droidsonroids/gif/c;->h:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lpl/droidsonroids/gif/c;->i:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lpl/droidsonroids/gif/c;->j:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lpl/droidsonroids/gif/c;->k:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lpl/droidsonroids/gif/c;->l:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lpl/droidsonroids/gif/c;->m:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lpl/droidsonroids/gif/c;->n:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lpl/droidsonroids/gif/c;->o:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lpl/droidsonroids/gif/c;->p:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lpl/droidsonroids/gif/c;->q:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lpl/droidsonroids/gif/c;->r:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lpl/droidsonroids/gif/c;->s:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lpl/droidsonroids/gif/c;->t:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lpl/droidsonroids/gif/c;->u:Lpl/droidsonroids/gif/c;

    aput-object v2, v0, v1

    sput-object v0, Lpl/droidsonroids/gif/c;->x:[Lpl/droidsonroids/gif/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p3, p0, Lpl/droidsonroids/gif/c;->w:I

    .line 109
    iput-object p4, p0, Lpl/droidsonroids/gif/c;->v:Ljava/lang/String;

    .line 110
    return-void
.end method

.method static a(I)Lpl/droidsonroids/gif/c;
    .locals 5

    .prologue
    .line 113
    invoke-static {}, Lpl/droidsonroids/gif/c;->values()[Lpl/droidsonroids/gif/c;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 114
    iget v4, v0, Lpl/droidsonroids/gif/c;->w:I

    if-ne v4, p0, :cond_0

    .line 119
    :goto_1
    return-object v0

    .line 113
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 117
    :cond_1
    sget-object v0, Lpl/droidsonroids/gif/c;->u:Lpl/droidsonroids/gif/c;

    .line 118
    iput p0, v0, Lpl/droidsonroids/gif/c;->w:I

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/droidsonroids/gif/c;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lpl/droidsonroids/gif/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/c;

    return-object v0
.end method

.method public static values()[Lpl/droidsonroids/gif/c;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lpl/droidsonroids/gif/c;->x:[Lpl/droidsonroids/gif/c;

    invoke-virtual {v0}, [Lpl/droidsonroids/gif/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/droidsonroids/gif/c;

    return-object v0
.end method
