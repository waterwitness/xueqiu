.class public Lcom/alipay/euler/andfix/security/SecurityChecker;
.super Ljava/lang/Object;
.source "SecurityChecker.java"


# static fields
.field private static final CLASSES_DEX:Ljava/lang/String; = "classes.dex"

.field private static final DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

.field private static final SP_MD5:Ljava/lang/String; = "-md5"

.field private static final SP_NAME:Ljava/lang/String; = "_andfix_"

.field private static final TAG:Ljava/lang/String; = "SecurityChecker"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDebuggable:Z

.field private mPublicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/euler/andfix/security/SecurityChecker;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alipay/euler/andfix/security/SecurityChecker;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    .locals 4

    .prologue
    .line 155
    array-length v0, p2

    if-lez v0, :cond_0

    .line 156
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 158
    :try_start_0
    aget-object v0, p2, v1

    iget-object v2, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    const/4 v0, 0x1

    .line 165
    :goto_1
    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v2, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 177
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 178
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 180
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 182
    :catch_0
    move-exception v1

    .line 183
    :goto_2
    :try_start_2
    const-string v3, "SecurityChecker"

    const-string v4, "getFileMD5"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    if-eqz v2, :cond_0

    .line 188
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 189
    :catch_1
    move-exception v1

    .line 190
    const-string v2, "SecurityChecker"

    const-string v3, "getFileMD5"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 193
    :goto_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 194
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :catch_2
    move-exception v0

    .line 190
    const-string v1, "SecurityChecker"

    const-string v2, "getFileMD5"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 186
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 187
    :goto_4
    if-eqz v2, :cond_3

    .line 188
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 191
    :cond_3
    :goto_5
    throw v0

    .line 189
    :catch_3
    move-exception v1

    .line 190
    const-string v2, "SecurityChecker"

    const-string v3, "getFileMD5"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 186
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 182
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method private getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    const-string v1, "_andfix_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-md5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 218
    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 220
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 222
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 224
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 226
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    sget-object v2, Lcom/alipay/euler/andfix/security/SecurityChecker;->DEBUG_DN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mDebuggable:Z

    .line 227
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mPublicKey:Ljava/security/PublicKey;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v1, "SecurityChecker"

    const-string v2, "init"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    const-string v1, "SecurityChecker"

    const-string v2, "init"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadDigestes(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .locals 3

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 143
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 144
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    .line 147
    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 151
    :cond_1
    return-void

    .line 147
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 148
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0
.end method

.method private saveFingerprint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    const-string v1, "_andfix_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-md5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    return-void
.end method


# virtual methods
.method public saveOptSig(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alipay/euler/andfix/security/SecurityChecker;->saveFingerprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public verifyApk(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-boolean v1, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mDebuggable:Z

    if-eqz v1, :cond_1

    .line 107
    const-string v0, "SecurityChecker"

    const-string v1, "mDebuggable = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v3, 0x0

    .line 113
    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    const-string v1, "classes.dex"

    invoke-virtual {v2, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 116
    if-nez v1, :cond_2

    .line 131
    :try_start_2
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    const-string v2, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 119
    :cond_2
    :try_start_3
    invoke-direct {p0, v2, v1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->loadDigestes(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    .line 120
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 121
    if-nez v1, :cond_3

    .line 131
    :try_start_4
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v1

    .line 134
    const-string v2, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    :cond_3
    :try_start_5
    invoke-direct {p0, p1, v1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    .line 131
    :try_start_6
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 133
    :catch_2
    move-exception v1

    .line 134
    const-string v2, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    :catch_3
    move-exception v1

    move-object v2, v3

    .line 126
    :goto_1
    :try_start_7
    const-string v3, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 130
    if-eqz v2, :cond_0

    .line 131
    :try_start_8
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 133
    :catch_4
    move-exception v1

    .line 134
    const-string v2, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 130
    :goto_2
    if-eqz v2, :cond_4

    .line 131
    :try_start_9
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 135
    :cond_4
    :goto_3
    throw v0

    .line 133
    :catch_5
    move-exception v1

    .line 134
    const-string v2, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 129
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 125
    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public verifyOpt(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
