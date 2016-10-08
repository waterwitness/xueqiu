.class public final Lnet/a/a/a/d;
.super Ljava/lang/Object;
.source "HanyuPinyinVCharType.java"


# static fields
.field public static final a:Lnet/a/a/a/d;

.field public static final b:Lnet/a/a/a/d;

.field public static final c:Lnet/a/a/a/d;


# instance fields
.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lnet/a/a/a/d;

    const-string v1, "WITH_U_AND_COLON"

    invoke-direct {v0, v1}, Lnet/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/a/a/a/d;->a:Lnet/a/a/a/d;

    .line 66
    new-instance v0, Lnet/a/a/a/d;

    const-string v1, "WITH_V"

    invoke-direct {v0, v1}, Lnet/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/a/a/a/d;->b:Lnet/a/a/a/d;

    .line 71
    new-instance v0, Lnet/a/a/a/d;

    const-string v1, "WITH_U_UNICODE"

    invoke-direct {v0, v1}, Lnet/a/a/a/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/a/a/a/d;->c:Lnet/a/a/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    iput-object p1, p0, Lnet/a/a/a/d;->d:Ljava/lang/String;

    .line 94
    return-void
.end method
