.class public final Lnet/a/a/a/c;
.super Ljava/lang/Object;
.source "HanyuPinyinToneType.java"


# static fields
.field public static final a:Lnet/a/a/a/c;

.field public static final b:Lnet/a/a/a/c;

.field public static final c:Lnet/a/a/a/c;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lnet/a/a/a/c;

    const-string v1, "WITH_TONE_NUMBER"

    invoke-direct {v0, v1}, Lnet/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/a/a/a/c;->a:Lnet/a/a/a/c;

    .line 67
    new-instance v0, Lnet/a/a/a/c;

    const-string v1, "WITHOUT_TONE"

    invoke-direct {v0, v1}, Lnet/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/a/a/a/c;->b:Lnet/a/a/a/c;

    .line 72
    new-instance v0, Lnet/a/a/a/c;

    const-string v1, "WITH_TONE_MARK"

    invoke-direct {v0, v1}, Lnet/a/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/a/a/a/c;->c:Lnet/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1087
    iput-object p1, p0, Lnet/a/a/a/c;->d:Ljava/lang/String;

    .line 92
    return-void
.end method
